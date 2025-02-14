(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun ClaimHarmful (BoundSet BoundSet) Bool)
(declare-fun CausedBy (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (ClaimHarmful a b) (CausedBy b c))))) (exists ((a BoundSet)) (exists ((d BoundSet)) (ClaimHarmful a d))))))
(check-sat)
(get-model)