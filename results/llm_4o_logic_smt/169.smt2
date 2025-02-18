(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsLargeGroupOfPeople (BoundSet) Bool)
(declare-fun IsWalkingInCity (BoundSet BoundSet) Bool)
(declare-fun IsAtNight (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (IsLargeGroupOfPeople b) (and (IsWalkingInCity b a) (IsAtNight b c)))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (IsWalkingInCity d a))))))
(check-sat)
(get-model)