(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsDusty (BoundSet) Bool)
(declare-fun RunsAlong (BoundSet BoundSet) Bool)
(declare-fun RunsThrough (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(declare-fun IsRunning (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (IsDusty a) (and (RunsAlong a b) (RunsThrough a c)))))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsDusty e) (IsOutside f)))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (RunsAlong g h) (IsOutside i))))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (RunsAlong j k) (IsRunning l))))) (and (forall ((o BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsRunning m) (RunsAlong n o))))) (and (forall ((p BoundSet)) (forall ((q BoundSet)) (forall ((r BoundSet)) (=> (RunsThrough p q) (IsOutside r))))) (forall ((s BoundSet)) (forall ((u BoundSet)) (forall ((t BoundSet)) (=> (RunsThrough s t) (IsRunning u))))))))))) (exists ((d BoundSet)) (and (IsOutside d) (IsRunning d))))))
(check-sat)
(get-model)