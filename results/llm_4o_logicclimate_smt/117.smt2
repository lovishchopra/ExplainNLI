(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInCoats (BoundSet) Bool)
(declare-fun Kiss (BoundSet) Bool)
(declare-fun IsOnSideOfRoad (BoundSet) Bool)
(declare-fun ShowAppreciationFor (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInCoats a) (and (Kiss a) (IsOnSideOfRoad a)))) (forall ((g BoundSet)) (forall ((f BoundSet)) (forall ((h BoundSet)) (=> (Kiss f) (ShowAppreciationFor g h)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (ShowAppreciationFor d e))))))
(check-sat)
(get-model)