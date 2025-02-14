(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsDressedInColorfulOutfit (BoundSet) Bool)
(declare-fun IsLaughing (BoundSet) Bool)
(declare-fun IsWearingColorfulClothing (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsAsian a) (and (IsDressedInColorfulOutfit a) (IsLaughing a)))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsWearingColorfulClothing e) (IsAsian f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsDressedInColorfulOutfit g) (IsWearingColorfulClothing h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsWearingColorfulClothing i) (IsDressedInColorfulOutfit j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsLaughing k) (IsWearingColorfulClothing l)))) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsWearingColorfulClothing m) (IsLaughing n))))))))) (exists ((c BoundSet)) (IsWearingColorfulClothing c)))))
(check-sat)
(get-model)