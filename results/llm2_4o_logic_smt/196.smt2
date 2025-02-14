(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun DropsSomething (BoundSet) Bool)
(declare-fun ReachesForIt (BoundSet) Bool)
(declare-fun DiscussesTopic (BoundSet BoundSet) Bool)
(declare-fun Talking (BoundSet) Bool)
(declare-fun ReachingForSomething (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (DropsSomething a) (and (ReachesForIt a) (DiscussesTopic b c)))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (Talking h) (DropsSomething i)))) (and (forall ((k BoundSet)) (forall ((j BoundSet)) (=> (Talking j) (ReachesForIt k)))) (forall ((l BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (Talking l) (DiscussesTopic m n)))))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (Talking d) (ReachingForSomething a)))))))
(check-sat)
(get-model)