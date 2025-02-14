(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun Taught (BoundSet BoundSet) Bool)
(declare-fun RidesScooter (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Taught a b) (RidesScooter b c))))) (forall ((d BoundSet)) (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (Taught d e) (RidesScooter e f)))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (Taught a b))))))
(check-sat)
(get-model)