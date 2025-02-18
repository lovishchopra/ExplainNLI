(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun HaveHeart (BoundSet) Bool)
(declare-fun WillMakeRightDecision (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (HaveHeart a)) (and (forall ((d BoundSet)) (=> (HaveHeart d) (WillMakeRightDecision d))) (forall ((e BoundSet)) (=> (WillMakeRightDecision e) (HaveHeart e))))) (exists ((a BoundSet)) (WillMakeRightDecision a)))))
(check-sat)
(get-model)