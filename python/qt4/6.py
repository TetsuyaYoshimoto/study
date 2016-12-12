# -*- coding:utf-8 -*-
import sys
import os
import glob
import codecs
from xml.dom.minidom import parse
from xml.dom import Node
from xml.sax.saxutils import escape


from PyQt4 import QtGui as gui
from PyQt4 import QtCore as core

class MainWindow(gui.QWidget):
    def __init__(self):
        super(MainWindow, self).__init__()
        self.initUi()

    def initUi(self):
        grid = gui.QGridLayout()

        boxFile = gui.QHBoxLayout()
        self.txtFile = gui.QLineEdit()
        btnFile = gui.QPushButton('...')
        btnFile.setMaximumWidth(40)
        btnFile.clicked.connect(self.chooseMindMapFile)
        boxFile.addWidget(self.txtFile)
        boxFile.addWidget(btnFile)
        grid.addWidget(gui.QLabel(u'FreeMind ファイル'),1,0)
        grid.addLayout(boxFile,1,1)

        boxCtrl = gui.QHBoxLayout()

        rdoGroup = gui.QButtonGroup()
        self.rdoFsw = gui.QRadioButton('FreeStyleWiki')
        rdoGroup.addButton(self.rdoFsw)
        boxCtrl.addWidget(self.rdoFsw)
        self.rdoFsw.setChecked(True)

        self.rdoHtml = gui.QRadioButton('Html')
        rdoGroup.addButton(self.rdoHtml)
        boxCtrl.addWidget(self.rdoHtml)

        self.rdoHtmlPrv = gui.QRadioButton('Html(Preview)')
        rdoGroup.addButton(self.rdoHtmlPrv)
        boxCtrl.addWidget(self.rdoHtmlPrv)

        btnConv = gui.QPushButton(u'変換')
        btnConv.setMaximumWidth(200)
        btnConv.clicked.connect(self.doConvert)
        boxCtrl.addWidget(btnConv)
        grid.addLayout(boxCtrl,2,1)

        self.txtOut = gui.QPlainTextEdit()
        grid.addWidget(gui.QLabel(u'結果'),3,0)
        grid.addWidget(self.txtOut,3,1)

        self.setLayout(grid)
        self.setWindowTitle('FreeMind xml to FreeStyleWiki/Html')
        self.show()

    def chooseMindMapFile(self):
        dialog = gui.QFileDialog()
        dialog.setFileMode(gui.QFileDialog.AnyFile)
        dialog.setFilter('FreeMindMap (*.mm)')
        if dialog.exec_():
            fileNames = dialog.selectedFiles()
            for f in fileNames:
                self.txtFile.setText(f)
                return
        return self.txtFile.setText('')

    def doConvert(self):
        if self.rdoFsw.isChecked():
            levelPrefix = wikiLevelPrefix
        else:
            levelPrefix = htmlLevelPrefix
        isHtmlPreview = self.rdoHtmlPrv.isChecked()
        convertToWikiFormat(self.txtFile.text(), self.txtOut, levelPrefix, isHtmlPreview)

def convertToWikiFormat(mm_file, txt_out, levelPrefix, isHtmlPreview):
    txt_out.clear()
    dom = parse(open(mm_file,'r'))
    level = 0
    handleElement(dom.firstChild, level, txt_out, levelPrefix, isHtmlPreview)
    txt_out.verticalScrollBar().triggerAction(gui.QAbstractSlider.SliderToMinimum)

def handleElement(element, level, txt_out, levelPrefix, isHtmlPreview):
    if element.hasAttribute('TEXT'):
        if isHtmlPreview:
            txt_out.appendHtml(levelPrefix(level, element.getAttribute('TEXT')) + element.getAttribute('TEXT'))
        else:
            txt_out.appendPlainText(levelPrefix(level, element.getAttribute('TEXT')) + element.getAttribute('TEXT'))

    if element.hasChildNodes():
        for node in element.childNodes:
            if Node.ELEMENT_NODE == node.nodeType:
                handleElement(node, level + 1, txt_out, levelPrefix, isHtmlPreview)

def wikiLevelPrefix(level, text):
    level_prefix_list = ('', '!!!','!!','!','::','*','**')
    ret = ''
    if len(level_prefix_list) > level:
        ret = level_prefix_list[level]
    else:
        ret = ''.join(['.' for x in range(level - len(level_prefix_list))])
    return ret

def htmlLevelPrefix(level, text):
    level_prefix_list = ('h1', 'h1','h2','h3','h4')
    tag = None
    prefix = ''
    if len(level_prefix_list) > level:

        tag = level_prefix_list[level]

        style = ''

    else:
        tag = 'p'
        style = ' style="padding-left:%dem"' % ((level-3) * 2)
        prefix = '- '
    return '<%S%S>%s%s</%S>\r\n' % (tag, style, prefix, escape(text), tag)

def main():
    app = gui.QApplication(sys.argv)
    mainWin = MainWindow()
    sys.exit(app.exec_())

if __name__ == '__main__':
    main()
