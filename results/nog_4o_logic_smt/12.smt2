(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Thinks (BoundSet) Bool)
(declare-fun ShouldPutMoreMoneyIntoSchools (BoundSet BoundSet BoundSet) Bool)
(declare-fun Believes (BoundSet) Bool)
(declare-fun Wants (BoundSet BoundSet BoundSet BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (Thinks a) (ShouldPutMoreMoneyIntoSchools b c d)))))) (exists ((a BoundSet)) (exists ((f BoundSet)) (exists ((e BoundSet)) (exists ((i BoundSet)) (exists ((g BoundSet)) (exists ((h BoundSet)) (and (Believes e) (Wants a f g h i)))))))))))
(check-sat)
(get-model)