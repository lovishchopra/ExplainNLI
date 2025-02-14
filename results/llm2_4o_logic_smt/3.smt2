(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Everyone (BoundSet) Bool)
(declare-fun BreaksInto (BoundSet BoundSet) Bool)
(declare-fun IsSpooky (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Everyone a) (and (BreaksInto a b) (IsSpooky b))))) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (IsSpooky d) (BreaksInto c d)))))))
(check-sat)
(get-model)