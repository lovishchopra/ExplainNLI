(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Believes (BoundSet) Bool)
(declare-fun Caused (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (Believes a) (Caused b c))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (Caused a d))))))
(check-sat)
(get-model)