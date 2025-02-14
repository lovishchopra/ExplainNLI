(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInWhiteShirt (BoundSet) Bool)
(declare-fun IsSpeakingIntoMicrophone (BoundSet) Bool)
(declare-fun IsAtPublicEvent (BoundSet) Bool)
(declare-fun IsMakingSpeech (BoundSet) Bool)
(declare-fun IsInFrontOfCrowd (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInWhiteShirt a) (and (IsSpeakingIntoMicrophone a) (IsAtPublicEvent a)))) (and (forall ((f BoundSet)) (=> (IsMakingSpeech f) (IsInWhiteShirt f))) (and (forall ((g BoundSet)) (=> (IsInFrontOfCrowd g) (IsInWhiteShirt g))) (and (forall ((h BoundSet)) (=> (IsSpeakingIntoMicrophone h) (IsInWhiteShirt h))) (and (forall ((i BoundSet)) (=> (IsSpeakingIntoMicrophone i) (IsMakingSpeech i))) (and (forall ((j BoundSet)) (=> (IsMakingSpeech j) (IsSpeakingIntoMicrophone j))) (and (forall ((k BoundSet)) (=> (IsAtPublicEvent k) (IsInWhiteShirt k))) (and (forall ((l BoundSet)) (=> (IsMakingSpeech l) (IsAtPublicEvent l))) (and (forall ((m BoundSet)) (=> (IsAtPublicEvent m) (IsInFrontOfCrowd m))) (forall ((n BoundSet)) (=> (IsInFrontOfCrowd n) (IsAtPublicEvent n)))))))))))) (exists ((a BoundSet)) (and (IsInWhiteShirt a) (and (IsMakingSpeech a) (IsInFrontOfCrowd a)))))))
(check-sat)
(get-model)