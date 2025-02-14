(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsResting (BoundSet BoundSet) Bool)
(declare-fun IsSeated (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsAsian a) (and (IsWearing a b) (and (IsSittingOn a c) (IsResting d e))))))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsSeated g) (IsAsian h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsSeated i) (IsWearing j k))))) (and (forall ((l BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsSittingOn l m) (IsSeated n))))) (forall ((p BoundSet)) (forall ((o BoundSet)) (forall ((q BoundSet)) (=> (IsSeated o) (IsSittingOn p q))))))))) (exists ((f BoundSet)) (IsSeated f)))))
(check-sat)
(get-model)