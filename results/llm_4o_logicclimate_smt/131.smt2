(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTendingTo (BoundSet BoundSet) Bool)
(declare-fun Includes (BoundSet BoundSet) Bool)
(declare-fun IsTakingCareOf (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (IsTendingTo a b) (and (Includes b c) (Includes b d))))))) (and (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (IsTendingTo f g) (IsTakingCareOf f g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (IsTakingCareOf h i) (IsTendingTo h i)))) (and (forall ((j BoundSet)) (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (Includes j k) (IsTakingCareOf l j))))) (and (forall ((o BoundSet)) (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (IsTakingCareOf m n) (Includes n o))))) (forall ((r BoundSet)) (forall ((p BoundSet)) (forall ((q BoundSet)) (=> (Includes p q) (IsTakingCareOf r p)))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (IsTakingCareOf a b))))))
(check-sat)
(get-model)