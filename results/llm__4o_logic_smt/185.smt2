(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsInFrontOf (BoundSet BoundSet) Bool)
(declare-fun IsSeatedOn (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsSittingOn a b) (IsInFrontOf a c))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsSittingOn f g) (IsSeatedOn h i)))))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (forall ((m BoundSet)) (=> (IsSeatedOn j k) (IsSittingOn l m)))))) (and (forall ((n BoundSet)) (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (IsSittingOn n o) (IsOutside p))))) (and (forall ((q BoundSet)) (forall ((s BoundSet)) (forall ((r BoundSet)) (=> (IsOutside q) (IsSittingOn r s))))) (and (forall ((u BoundSet)) (forall ((v BoundSet)) (forall ((w BoundSet)) (forall ((t BoundSet)) (=> (IsSeatedOn t u) (IsInFrontOf v w)))))) (forall ((z BoundSet)) (forall ((x BoundSet)) (forall ((y BoundSet)) (=> (IsOutside x) (IsInFrontOf y z))))))))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsSeatedOn d e) (IsOutside d)))))))
(check-sat)
(get-model)