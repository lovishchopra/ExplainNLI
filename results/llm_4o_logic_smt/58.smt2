(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun HasHeart (BoundSet) Bool)
(declare-fun ManyPeopleDoNotHave (BoundSet) Bool)
(declare-fun WillMakeDecision (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (HasHeart a) (ManyPeopleDoNotHave b)))) (exists ((a BoundSet)) (WillMakeDecision a)))))
(check-sat)
(get-model)