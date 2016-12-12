#encoding=utf-8
ip = raw_input()
if "[" in ip:
    ip = ip.split(".")
    print ip
    for i in xrange(4):
        if "[" in ip[i]:
            print "abc", str(i)
            print ip[i][1], 

# for i in xrange(input()):
#     tako = raw_input().split("[")
#
#     print "[" in ip
#
#
#
#
#     if tako.count("["):
#         print "hakkenn"
#     elif ip == tako[0]:
#         print tako[0],tako[3][1:],tako[6]
#


