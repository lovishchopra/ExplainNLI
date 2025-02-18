(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInWhiteShirt (BoundSet) Bool)
(declare-fun IsSpeakingIntoMicrophone (BoundSet) Bool)
(declare-fun IsAtPublicEvent (BoundSet) Bool)
(declare-fun IsMakingSpeech (BoundSet) Bool)
(declare-fun IsInFrontOfCrowd (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInWhiteShirt a) (and (IsSpeakingIntoMicrophone a) (IsAtPublicEvent a)))) (and (forall ((f BoundSet)) (=> (IsSpeakingIntoMicrophone f) (IsMakingSpeech f))) (and (forall ((g BoundSet)) (=> (IsSpeakingIntoMicrophone g) (IsInFrontOfCrowd g))) (and (forall ((h BoundSet)) (=> (IsInWhiteShirt h) (IsAtPublicEvent h))) (and (forall ((i BoundSet)) (=> (IsAtPublicEvent i) (IsMakingSpeech i))) (forall ((j BoundSet)) (=> (IsAtPublicEvent j) (IsInFrontOfCrowd j)))))))) (exists ((a BoundSet)) (and (IsInWhiteShirt a) (and (IsMakingSpeech a) (IsInFrontOfCrowd a)))))))
(check-sat)
(get-model)