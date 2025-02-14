(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsForEducation (BoundSet) Bool)
(declare-fun IsUnnecessary (BoundSet) Bool)
(declare-fun IsNotReaching (BoundSet BoundSet) Bool)
(declare-fun IsNotUsedForEducation (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (and (IsForEducation b) (IsUnnecessary b))) (exists ((d BoundSet)) (exists ((c BoundSet)) (or (not (IsNotReaching c d)) (not (IsNotUsedForEducation c))))))))
(check-sat)
(get-model)