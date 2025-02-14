(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSmall (BoundSet) Bool)
(declare-fun IsInBlueSoccerUniforms (BoundSet) Bool)
(declare-fun UsesSteps (BoundSet BoundSet) Bool)
(declare-fun WashesHands (BoundSet BoundSet) Bool)
(declare-fun IsInAdultSizedBathroom (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsSmall b) (and (IsInBlueSoccerUniforms b) (and (UsesSteps b d) (and (WashesHands b a) (IsInAdultSizedBathroom b)))))))) (and (forall ((i BoundSet)) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (WashesHands g h) (IsSmall i))))) (forall ((k BoundSet)) (forall ((l BoundSet)) (forall ((j BoundSet)) (=> (WashesHands j k) (IsInAdultSizedBathroom l))))))) (exists ((a BoundSet)) (exists ((f BoundSet)) (WashesHands f a))))))
(check-sat)
(get-model)