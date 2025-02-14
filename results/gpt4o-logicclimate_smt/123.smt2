(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsTeenager (BoundSet) Bool)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsResting (BoundSet BoundSet) Bool)
(declare-fun IsSeated (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (and (IsAsian a) (and (IsTeenager a) (and (IsWearing a b) (and (IsSittingOn a c) (IsResting d e)))))))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsTeenager g) (IsSeated h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((k BoundSet)) (=> (IsTeenager i) (IsSittingOn j k))))) (and (forall ((m BoundSet)) (forall ((l BoundSet)) (forall ((n BoundSet)) (=> (IsSittingOn l m) (IsSeated n))))) (and (forall ((o BoundSet)) (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (IsSeated o) (IsSittingOn p q))))) (forall ((s BoundSet)) (forall ((r BoundSet)) (forall ((t BoundSet)) (=> (IsResting r s) (IsSeated t)))))))))) (exists ((f BoundSet)) (and (IsTeenager f) (IsSeated f))))))
(check-sat)
(get-model)