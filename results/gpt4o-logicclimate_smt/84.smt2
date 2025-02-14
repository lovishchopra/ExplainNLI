(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsIn (BoundSet BoundSet) Bool)
(declare-fun OccurredIn (BoundSet) Bool)
(declare-fun IsResponsibleFor (BoundSet BoundSet) Bool)
(declare-fun IsExtremelyDeadly (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (and (IsIn a b) (and (OccurredIn c) (and (IsResponsibleFor a d) (IsIn d e))))))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsIn g h) (IsExtremelyDeadly g)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((k BoundSet)) (=> (IsIn i j) (IsResponsibleFor i k))))) (and (forall ((m BoundSet)) (forall ((l BoundSet)) (=> (IsResponsibleFor l m) (IsExtremelyDeadly l)))) (and (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (IsExtremelyDeadly n) (IsResponsibleFor n o)))) (forall ((q BoundSet)) (forall ((r BoundSet)) (forall ((p BoundSet)) (=> (IsIn p q) (IsExtremelyDeadly r)))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsIn a b) (IsExtremelyDeadly a)))))))
(check-sat)
(get-model)