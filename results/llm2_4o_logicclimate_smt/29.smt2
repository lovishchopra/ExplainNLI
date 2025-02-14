(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun HaveNotMaterialized (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsIn (BoundSet BoundSet) Bool)
(declare-fun PaleInComparisonTo (BoundSet BoundSet) Bool)
(declare-fun IsMajor (BoundSet) Bool)
(declare-fun IsHurricaneActivity (BoundSet) Bool)
(declare-fun IsRecent (BoundSet) Bool)
(declare-fun IsLessFrequentThan (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (and (exists ((c BoundSet)) (( (and (HaveNotMaterialized a) (HaveNotMaterialized b)))) (and (IsIn c d) (PaleInComparisonTo c e))))))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (HaveNotMaterialized h) (IsMajor i)))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (HaveNotMaterialized j) (IsHurricaneActivity k)))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (HaveNotMaterialized l) (IsRecent m)))) (and (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (HaveNotMaterialized n) (IsMajor o)))) (and (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (HaveNotMaterialized p) (IsHurricaneActivity q)))) (forall ((t BoundSet)) (forall ((r BoundSet)) (forall ((s BoundSet)) (=> (HaveNotMaterialized r) (IsLessFrequentThan s t))))))))))) (exists ((f BoundSet)) (exists ((g BoundSet)) (and (IsRecent f) (and (IsMajor f) (and (IsHurricaneActivity f) (IsLessFrequentThan f g)))))))))
(check-sat)
(get-model)