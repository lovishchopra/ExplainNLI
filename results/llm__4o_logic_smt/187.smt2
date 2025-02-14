(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInBlackHat (BoundSet) Bool)
(declare-fun IsInCoat (BoundSet) Bool)
(declare-fun MakesFace (BoundSet) Bool)
(declare-fun HasCrowdBehind (BoundSet) Bool)
(declare-fun IsStandingNear (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInBlackHat a) (and (IsInCoat a) (and (MakesFace a) (HasCrowdBehind a))))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsInCoat i) (IsStandingNear j k))))) (forall ((n BoundSet)) (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (HasCrowdBehind l) (IsStandingNear m n))))))) (exists ((g BoundSet)) (exists ((h BoundSet)) (IsStandingNear g h))))))
(check-sat)
(get-model)