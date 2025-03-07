(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Taught (BoundSet BoundSet) Bool)
(declare-fun HasScooter (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (and (Taught a b) (HasScooter b c))))) (exists ((b BoundSet)) (exists ((a BoundSet)) (Taught a b))))))
(check-sat)
(get-model)