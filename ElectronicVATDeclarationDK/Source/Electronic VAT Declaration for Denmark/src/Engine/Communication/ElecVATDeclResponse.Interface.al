namespace Microsoft.Finance.VAT.Reporting;

interface "Elec. VAT Decl. Response"
{
    /// <summary>
    /// Returns a value that indicates if the HTTP response is the result of the environment blocking an outgoing HTTP request.
    /// </summary>
    procedure IsBlockedByEnvironment(): Boolean;

    /// <summary>
    /// Returns a value that indicates if the HTTP response was successful.
    /// </summary>
    procedure IsSuccessStatusCode(): Boolean;

    /// <summary>
    /// Returns the status code of the HTTP response.
    /// </summary>
    procedure HttpStatusCode(): Integer;

    /// <summary>
    /// Returns the reason phrase which typically is sent by servers together with the status code.
    /// </summary>
    procedure ReasonPhrase(): Text;

    /// <summary>
    /// Returns the contents of the HTTP response as an InStream.
    /// </summary>
    procedure GetResponseStream() InStream: InStream;

    /// <summary>
    /// Returns the contents of the HTTP response as text.
    /// </summary>
    procedure GetResponseBodyAsText(): Text;
}