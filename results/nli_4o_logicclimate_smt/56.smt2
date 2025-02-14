(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun ToldConference (BoundSet BoundSet) Bool)
(declare-fun AtLocation (BoundSet BoundSet) Bool)
(declare-fun NeedsBrainWashing (BoundSet) Bool)
(declare-fun OnTopic (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (ToldConference c d) (and (AtLocation d e) (and (NeedsBrainWashing a) (OnTopic a b))))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (NeedsBrainWashing a) (OnTopic a b)))))))
(check-sat)
(get-model)