(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsTooLittle (BoundSet) Bool)
(declare-fun IsUnrepresentative (BoundSet) Bool)
(declare-fun IsClaim (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (or (IsTooLittle a) (IsUnrepresentative b)))) (exists ((c BoundSet)) (not (IsClaim c))))))
(check-sat)
(get-model)