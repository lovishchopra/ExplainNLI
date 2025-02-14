(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun StudiesSlide (BoundSet BoundSet) Bool)
(declare-fun IsRelatedTo (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (StudiesSlide a b) (IsRelatedTo b c))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (StudiesSlide a b) (IsRelatedTo b c))))))))
(check-sat)
(get-model)