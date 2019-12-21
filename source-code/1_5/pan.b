	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC Phil */
;
		;
		
	case 4: // STATE 7
		;
		now.ghost = trpt->bup.ovals[2];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[1];
		now.ghost = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 5: // STATE 14
		;
		now.ghost2 = trpt->bup.ovals[2];
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[1];
		now.ghost2 = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 7: // STATE 20
		;
		now.fork[ Index(((((P0 *)_this)->_pid+1)%3), 3) ] = trpt->bup.ovals[1];
		now.fork[ Index(((P0 *)_this)->_pid, 3) ] = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 8: // STATE 25
		;
		p_restor(II);
		;
		;
		goto R999;
	}

