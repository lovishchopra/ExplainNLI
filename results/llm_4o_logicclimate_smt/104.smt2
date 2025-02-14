(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTan (BoundSet) Bool)
(declare-fun HasWoolHat (BoundSet) Bool)
(declare-fun IsRunning (BoundSet) Bool)
(declare-fun IsLeaningOver (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsTan a) (and (HasWoolHat a) (and (IsRunning a) (IsLeaningOver a b)))))) (and (forall ((d BoundSet)) (=> (IsRunning d) (IsTan d))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsTan e) (IsLeaningOver e f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsLeaningOver g h) (IsTan g)))) (and (forall ((i BoundSet)) (=> (HasWoolHat i) (IsTan i))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (HasWoolHat j) (IsLeaningOver j k)))) (and (forall ((l BoundSet)) (=> (IsRunning l) (IsTan l))) (and (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (IsRunning m) (IsLeaningOver m n)))) (and (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (IsLeaningOver o p) (IsRunning o)))) (forall ((r BoundSet)) (forall ((q BoundSet)) (=> (IsLeaningOver q r) (IsTan q))))))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsTan a) (and (IsRunning a) (IsLeaningOver a b))))))))
(check-sat)
(get-model)