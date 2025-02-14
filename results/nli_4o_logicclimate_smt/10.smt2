(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun ShowCorrelation (BoundSet BoundSet BoundSet) Bool)
(declare-fun Cause (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (not (ShowCorrelation a c d))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (not (Cause e f)))))))
(check-sat)
(get-model)