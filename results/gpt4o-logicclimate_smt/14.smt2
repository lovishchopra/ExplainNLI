(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsEnviedByWorld (BoundSet) Bool)
(declare-fun Envies (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (IsEnviedByWorld a)) (forall ((h BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (Envies f g) (IsEnviedByWorld h)))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (Envies b a))))))
(check-sat)
(get-model)