(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SpentOn (BoundSet BoundSet) Bool)
(declare-fun ResolvedWith (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (SpentOn b c))) (exists ((d BoundSet)) (exists ((e BoundSet)) (ResolvedWith d e))))))
(check-sat)
(get-model)