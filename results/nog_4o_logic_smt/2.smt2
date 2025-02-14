(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun WorkedHard (BoundSet) Bool)
(declare-fun Created (BoundSet) Bool)
(declare-fun IsWorn (BoundSet) Bool)
(declare-fun MakesHappy (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (WorkedHard a) (Created b)))) (exists ((b BoundSet)) (exists ((a BoundSet)) (( (and (IsWorn b) (MakesHappy a))))))))
(check-sat)
(get-model)