(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsWatching (BoundSet BoundSet) Bool)
(declare-fun IsMaking (BoundSet BoundSet) Bool)
(declare-fun IsOn (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsWatching a b) (and (IsMaking b c) (IsOn b d))))))) (exists ((f BoundSet)) (exists ((e BoundSet)) (IsWatching e f))))))
(check-sat)
(get-model)