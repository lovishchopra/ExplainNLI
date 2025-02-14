(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsFallacious (BoundSet) Bool)
(declare-fun IsIncoherent (BoundSet) Bool)
(declare-fun IsIllogical (BoundSet) Bool)
(declare-fun IsInvalid (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsFallacious a) (and (IsIncoherent a) (IsIllogical a)))) (and (forall ((d BoundSet)) (forall ((c BoundSet)) (=> (IsFallacious c) (IsInvalid d)))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsInvalid e) (IsFallacious f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsIncoherent g) (IsInvalid h)))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (=> (IsInvalid i) (IsIncoherent j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (IsIllogical k) (IsInvalid l)))) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsInvalid m) (IsIllogical n)))))))))) (exists ((b BoundSet)) (IsInvalid b)))))
(check-sat)
(get-model)