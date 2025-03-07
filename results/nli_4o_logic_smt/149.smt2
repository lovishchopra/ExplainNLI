(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun AreStretching (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsWearing a b) (AreStretching a)))) (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((d BoundSet)) (=> (AreStretching d) (IsWearing e f)))))) (exists ((c BoundSet)) (AreStretching c)))))
(check-sat)
(get-model)