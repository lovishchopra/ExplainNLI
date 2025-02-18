(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun { () BoundSet)
(declare-fun | () BoundSet)
(declare-fun } () BoundSet)
(declare-fun IsInRedCoat (BoundSet) Bool)
(declare-fun IsInBlueHeadWrap (BoundSet) Bool)
(declare-fun IsInJeans (BoundSet) Bool)
(declare-fun IsMakingSnowAngel (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(declare-fun PlaysInSnow (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInRedCoat a) (and (IsInBlueHeadWrap a) (and (IsInJeans a) (IsMakingSnowAngel a))))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsOutside h) (IsInRedCoat i)))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (PlaysInSnow j) (IsInRedCoat k)))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (IsOutside l) (IsInBlueHeadWrap m)))) (and (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (PlaysInSnow n) (IsInBlueHeadWrap o)))) (and (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (IsOutside p) (IsInJeans q)))) (and (forall ((r BoundSet)) (forall ((s BoundSet)) (=> (IsInJeans r) (PlaysInSnow s)))) (and (forall ((u BoundSet)) (forall ((t BoundSet)) (=> (PlaysInSnow t) (IsInJeans u)))) (and (forall ((v BoundSet)) (forall ((w BoundSet)) (=> (IsMakingSnowAngel v) (IsOutside w)))) (and (forall ((y BoundSet)) (forall ((x BoundSet)) (=> (IsOutside x) (IsMakingSnowAngel y)))) (and (forall ((z BoundSet)) (=> (IsMakingSnowAngel z) (PlaysInSnow {))) (=> (PlaysInSnow |) (IsMakingSnowAngel }))))))))))))) (exists ((f BoundSet)) (and (IsOutside f) (PlaysInSnow f))))))
(check-sat)
(get-model)