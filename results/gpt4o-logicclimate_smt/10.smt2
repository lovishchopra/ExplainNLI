(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun AreOver (BoundSet BoundSet) Bool)
(declare-fun ShowCorrelation (BoundSet BoundSet BoundSet) Bool)
(declare-fun Cause (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (AreOver a b) (not (ShowCorrelation a c d))))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (not (Cause e f)))))))
(check-sat)
(get-model)