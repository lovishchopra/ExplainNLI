(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWatching (BoundSet BoundSet) Bool)
(declare-fun IsMaking (BoundSet BoundSet) Bool)
(declare-fun IsOnSet (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (IsWatching a b) (and (IsMaking b c) (IsOnSet b d))))))) (exists ((e BoundSet)) (exists ((f BoundSet)) (IsWatching e f))))))
(check-sat)
(get-model)