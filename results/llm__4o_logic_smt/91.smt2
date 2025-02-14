(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMean (BoundSet) Bool)
(declare-fun IsTeacher (BoundSet) Bool)
(declare-fun IsPerson (BoundSet) Bool)
(declare-fun WouldNotRaise (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsMean a) (and (IsTeacher a) (IsPerson a)))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsMean e) (WouldNotRaise e f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (WouldNotRaise g h) (IsMean g)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsTeacher i) (WouldNotRaise i j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (WouldNotRaise k l) (IsTeacher k)))) (and (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsPerson m) (WouldNotRaise m n)))) (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (WouldNotRaise o p) (IsPerson o)))))))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (WouldNotRaise a d))))))
(check-sat)
(get-model)