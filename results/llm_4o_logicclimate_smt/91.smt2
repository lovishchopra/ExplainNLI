(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsIncreased (BoundSet) Bool)
(declare-fun IsDueTo (BoundSet BoundSet) Bool)
(declare-fun Alters (BoundSet BoundSet) Bool)
(declare-fun IsNotResponsibleFor (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (IsIncreased a) (and (IsDueTo a b) (and (Alters b c) (Alters b d)))))))) (and (forall ((g BoundSet)) (forall ((j BoundSet)) (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsNotResponsibleFor g h) (IsDueTo i j)))))) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsIncreased k) (IsDueTo k l)))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (and (IsNotResponsibleFor e a) (IsIncreased a)))))))
(check-sat)
(get-model)