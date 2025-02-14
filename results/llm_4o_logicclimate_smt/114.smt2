(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsInBlueSoccerUniforms (BoundSet) Bool)
(declare-fun UsesWoodenSetOfSteps (BoundSet) Bool)
(declare-fun WashesHands (BoundSet) Bool)
(declare-fun IsInAdultSizedBathroom (BoundSet) Bool)
(declare-fun AreWashingHands (BoundSet) Bool)
(assert (not (=> (and (exists ((b BoundSet)) (and (IsSmall b) (and (IsInBlueSoccerUniforms b) (and (UsesWoodenSetOfSteps b) (and (WashesHands b) (IsInAdultSizedBathroom b)))))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsInBlueSoccerUniforms g) (AreWashingHands h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (=> (WashesHands i) (AreWashingHands j)))) (and (forall ((l BoundSet)) (forall ((k BoundSet)) (=> (AreWashingHands k) (WashesHands l)))) (forall ((m BoundSet)) (forall ((n BoundSet)) (=> (AreWashingHands m) (IsInAdultSizedBathroom n)))))))) (exists ((f BoundSet)) (AreWashingHands f)))))
(check-sat)
(get-model)