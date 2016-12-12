
class Base:
    basevalue = "base"
    def ham(self):
        print "ham"

class Derived(Base):
    tako = 100


if __name__ == "__main__":
    print "call main"
    derived = Derived()
    derived.ham()
    print derived.tako
    print "call end"

