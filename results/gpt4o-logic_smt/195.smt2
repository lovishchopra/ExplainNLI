(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsOlder (BoundSet) Bool)
(declare-fun HasGrayHair (BoundSet) Bool)
(declare-fun IsWearingGraySuit (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsOlder a) (and (HasGrayHair a) (IsWearingGraySuit a)))) (and (forall ((d BoundSet)) (=> (HasGrayHair d) (IsOlder d))) (and (forall ((e BoundSet)) (=> (IsOlder e) (IsWearingGraySuit e))) (and (forall ((f BoundSet)) (=> (IsWearingGraySuit f) (IsOlder f))) (and (forall ((g BoundSet)) (=> (HasGrayHair g) (IsOlder g))) (and (forall ((h BoundSet)) (=> (IsOlder h) (HasGrayHair h))) (and (forall ((i BoundSet)) (=> (IsWearingGraySuit i) (IsOlder i))) (and (forall ((j BoundSet)) (=> (IsOlder j) (IsWearingGraySuit j))) (forall ((k BoundSet)) (=> (HasGrayHair k) (IsWearingGraySuit k))))))))))) (exists ((a BoundSet)) (and (IsOlder a) (and (HasGrayHair a) (IsWearingGraySuit a)))))))
(check-sat)
(get-model)