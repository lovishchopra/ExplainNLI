(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsStandingInTheMiddle (BoundSet BoundSet) Bool)
(declare-fun IsInCrowd (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsStandingInTheMiddle a b) (IsInCrowd a c))))) (exists ((e BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsStandingInTheMiddle d b) (IsInCrowd d e))))))))
(check-sat)
(get-model)