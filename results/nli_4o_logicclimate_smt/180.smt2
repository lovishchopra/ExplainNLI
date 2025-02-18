(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInSuit (BoundSet) Bool)
(declare-fun IsCheering (BoundSet) Bool)
(declare-fun IsInLibrary (BoundSet) Bool)
(declare-fun IsInFrontOf (BoundSet BoundSet) Bool)
(declare-fun IsNear (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsInSuit b) (and (IsCheering b) (and (IsInLibrary b) (IsInFrontOf b a)))))) (and (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsInSuit e) (IsNear f g))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((j BoundSet)) (=> (IsCheering h) (IsNear i j))))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (forall ((m BoundSet)) (=> (IsInLibrary k) (IsNear l m))))) (forall ((p BoundSet)) (forall ((o BoundSet)) (forall ((n BoundSet)) (=> (IsInFrontOf n o) (IsNear p o))))))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsCheering d) (IsNear d a)))))))
(check-sat)
(get-model)