(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsInRedJacket (BoundSet) Bool)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsHolding (BoundSet BoundSet) Bool)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsSmall b) (and (IsInRedJacket b) (and (IsSittingOn b d) (IsHolding b a))))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (forall ((f BoundSet)) (=> (IsOn f g) (IsSmall h))))) (and (forall ((k BoundSet)) (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsHolding i j) (IsOn k j))))) (forall ((l BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsOn l m) (IsHolding n m)))))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (IsOn e a))))))
(check-sat)
(get-model)