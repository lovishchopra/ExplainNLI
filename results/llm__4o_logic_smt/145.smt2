(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsVisiting (BoundSet BoundSet) Bool)
(declare-fun IsInHospital (BoundSet) Bool)
(declare-fun IsVisitor (BoundSet) Bool)
(declare-fun Receives (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsVisiting a b) (IsInHospital b)))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsVisiting f g) (IsInHospital f)))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsInHospital h) (IsVisiting h i)))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsVisitor j) (IsVisiting k l))))) (and (forall ((n BoundSet)) (forall ((o BoundSet)) (forall ((m BoundSet)) (=> (IsVisiting m n) (Receives m o))))) (forall ((q BoundSet)) (forall ((p BoundSet)) (=> (IsVisitor p) (IsInHospital q))))))))) (exists ((a BoundSet)) (exists ((e BoundSet)) (and (IsInHospital a) (and (IsVisitor e) (Receives a e))))))))
(check-sat)
(get-model)