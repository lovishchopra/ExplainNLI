(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInGym (BoundSet) Bool)
(declare-fun ScoresInBasketball (BoundSet) Bool)
(declare-fun IsIndoors (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInGym a) (ScoresInBasketball a))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsInGym f) (IsIndoors g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsIndoors h) (IsInGym i)))) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (ScoresInBasketball j) (IsIndoors k))))))) (exists ((d BoundSet)) (IsIndoors d)))))
(check-sat)
(get-model)