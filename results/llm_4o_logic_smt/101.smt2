(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWatching (BoundSet BoundSet) Bool)
(declare-fun IsMaking (BoundSet BoundSet) Bool)
(declare-fun IsOnSet (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsWatching a b) (and (IsMaking b c) (IsOnSet d e)))))))) (exists ((g BoundSet)) (exists ((f BoundSet)) (IsWatching f g))))))
(check-sat)
(get-model)