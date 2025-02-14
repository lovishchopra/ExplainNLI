(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Devoured (BoundSet BoundSet) Bool)
(declare-fun IsBetterRegulationNeeded (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (Devoured a b) (and (Devoured a c) (Devoured a d))))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (IsBetterRegulationNeeded e f))))))
(check-sat)
(get-model)