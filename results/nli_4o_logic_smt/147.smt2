(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsInRubble (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsYoung a) (and (IsAsian a) (and (IsSittingOn a c) (IsInRubble a)))))) (and (forall ((d BoundSet)) (=> (IsYoung d) (IsAsian d))) (and (forall ((e BoundSet)) (=> (IsAsian e) (IsYoung e))) (and (forall ((f BoundSet)) (=> (IsYoung f) (IsOutside f))) (and (forall ((g BoundSet)) (=> (IsOutside g) (IsYoung g))) (and (forall ((h BoundSet)) (=> (IsInRubble h) (IsYoung h))) (and (forall ((i BoundSet)) (=> (IsAsian i) (IsYoung i))) (and (forall ((j BoundSet)) (=> (IsYoung j) (IsAsian j))) (and (forall ((k BoundSet)) (forall ((l BoundSet)) (=> (IsSittingOn k l) (IsYoung k)))) (forall ((m BoundSet)) (=> (IsInRubble m) (IsYoung m)))))))))))) (exists ((a BoundSet)) (and (IsYoung a) (and (IsAsian a) (and (IsOutside a) (IsInRubble a))))))))
(check-sat)
(get-model)