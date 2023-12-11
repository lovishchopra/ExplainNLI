(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun a () BoundSet)
(declare-fun IsBald (BoundSet) Bool)
(declare-fun HasHandOnShoulder (BoundSet) Bool)
(declare-fun IsTouching (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (and (IsBald a) (HasHandOnShoulder b))) (and (forall ((c BoundSet)) (forall ((d BoundSet)) (forall ((a BoundSet)) (=> (IsBald a) (IsTouching c d))))) (and (forall ((c BoundSet)) (forall ((d BoundSet)) (forall ((b BoundSet)) (=> (HasHandOnShoulder b) (IsTouching c d))))) (forall ((c BoundSet)) (forall ((d BoundSet)) (forall ((b BoundSet)) (=> (IsTouching c d) (HasHandOnShoulder b)))))))) (exists ((d BoundSet)) (exists ((c BoundSet)) (IsTouching c d))))))
(check-sat)
(get-model)