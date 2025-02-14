(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsDoing (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (IsDoing a b))) (exists ((b BoundSet)) (exists ((a BoundSet)) (IsDoing a b))))))
(check-sat)
(get-model)