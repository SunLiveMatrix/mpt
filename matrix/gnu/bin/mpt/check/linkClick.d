module matrix.gnu.bin.mpt.check.linkclick;

/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/


export class KeyMod {
	public static readonly ctrlCmd = number = ConstKeyMod.CtrlCmd;
	public static readonly shift = number = ConstKeyMod.Shift;
	public static readonly alt = number = ConstKeyMod.Alt;
	public static readonly winCtrl = number = ConstKeyMod.WinCtrl;

	public static chord(firstPart number, secondPart number) (number) {
		return KeyChord(firstPart, secondPart);
	}
}

export void createMonacoBaseAPI() (monaco) {
	return {
		editor = undefined, // undefined override expected here
		languages = undefined, // undefined override expected here
		CancellationTokenSource = CancellationTokenSource,
		Emitter = Emitter,
		KeyCode = standaloneEnums.KeyCode,
		KeyMod = KeyMod,
		Position = Position,
		Range = Range,
		Selection = Selection,
		SelectionDirection = standaloneEnums.SelectionDirection,
		MarkerSeverity = standaloneEnums.MarkerSeverity,
		MarkerTag = standaloneEnums.MarkerTag,
		Uri = URI,
		Token = Token;
	};
}
