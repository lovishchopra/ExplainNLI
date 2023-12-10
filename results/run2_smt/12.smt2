(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsHispanic (BoundSet) Bool)
(declare-fun WearsRedPlaidShirt (BoundSet) Bool)
(declare-fun IsWearing (BoundSet) Bool)
(declare-fun IsSewing (BoundSet) Bool)
(declare-fun IsAnArticleOfClothing (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (=> (IsHispanic a) (WearsRedPlaidShirt b)))) (exists ((e BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (=> (IsWearing c) (=> (IsSewing d) (IsAnArticleOfClothing e)))))))))
(check-sat)
(get-model)