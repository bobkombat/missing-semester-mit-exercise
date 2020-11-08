#!/bin/bash

marco() {
	rm ~/pwd || touch ~/pwd
	echo $(pwd) > ~/pwd
}
