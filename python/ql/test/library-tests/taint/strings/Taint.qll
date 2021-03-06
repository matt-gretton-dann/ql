import python
import semmle.python.security.TaintTracking
import semmle.python.security.strings.Untrusted


class SimpleSource extends TaintSource {

    SimpleSource() { this.(NameNode).getId() = "TAINTED" }

    override predicate isSourceOf(TaintKind kind) {
        kind instanceof ExternalStringKind
    }

    string toString() {
        result = "taint source"
    }

}

class ListSource extends TaintSource {

    ListSource() { this.(NameNode).getId() = "TAINTED_LIST" }

    override predicate isSourceOf(TaintKind kind) {
        kind instanceof ExternalStringSequenceKind
    }

    string toString() {
        result = "list taint source"
    }

}

class DictSource extends TaintSource {

    DictSource() { this.(NameNode).getId() = "TAINTED_DICT" }

    override predicate isSourceOf(TaintKind kind) {
        kind instanceof ExternalStringDictKind
    }

    string toString() {
        result = "dict taint source"
    }

}

