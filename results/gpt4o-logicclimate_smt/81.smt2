(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsReaching (BoundSet BoundSet) Bool)
(declare-fun OccursAt (BoundSet BoundSet) Bool)
(declare-fun LeadsToBreakdown (BoundSet) Bool)
(declare-fun IsUninhabitable (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsReaching a b) (OccursAt b c))))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (OccursAt g h) (LeadsToBreakdown i))))) (forall ((j BoundSet)) (forall ((k BoundSet)) (forall ((l BoundSet)) (=> (OccursAt j k) (LeadsToBreakdown l))))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (exists ((f BoundSet)) (and (IsUninhabitable d) (and (LeadsToBreakdown e) (LeadsToBreakdown f)))))))))
(check-sat)
(get-model)